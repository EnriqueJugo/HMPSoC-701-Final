function generate_signals_mif()
    % generate_signals_mif  Create 3-cycle signals (orig, 50Hz, 25Hz),
    %                       quantize to 8 bits, append "HELLO" in binary
    %                       using 50Hz=1,25Hz=0 with dead space,
    %                       write into 'signals.mif', then read back and plot.

    %% Parameters
    fs            = 600000;      % sampling rate (Hz)
    f0            = 2000;         % 50 Hz fundamental
    f25           = 1000;         % 25 Hz
    w0            = 2*pi*f0;
    w25           = 2*pi*f25;
    cycles        = 3;          % number of cycles per signal
    SNR_dB        = 21;         % noise level
    max_val       = 2^8 - 1;    % 8-bit max
    dead_samples  = 100;        % zeros between letters

    %% Time vectors for 3 cycles
    t50 = 0:1/fs:cycles*(1/f0); t50(end) = [];
    t25 = 0:1/fs:cycles*(1/f25); t25(end) = [];

    %% Noise power
    noise_power = 10^(-SNR_dB/10)*(5^2)/2;

    %% 1) Original composite
    orig = 0.3 + ...
           5*sin(w0*t50 + 2.5) + ...
           1.5*sin(3*w0*t50 + 1.3) + ...
           0.75*sin(5*w0*t50 + 1.0) + ...
           0.375*sin(7*w0*t50 + 0.6) + ...
           0.1875*sin(9*w0*t50 + 0.3);
    orig = orig + sqrt(noise_power)*randn(size(orig));

    %% 2) Pure 50 Hz sine + noise
    s50 = 5*sin(w0*t50) + sqrt(noise_power)*randn(size(t50));

    %% 3) Pure 25 Hz sine + noise
    s25 = 5*sin(w25*t25) + sqrt(noise_power)*randn(size(t25));

    %% Quantize to 8 bits
    q_orig = quantize_to_8bit(orig, max_val);
    q_s50  = quantize_to_8bit(s50,  max_val);
    q_s25  = quantize_to_8bit(s25,  max_val);

    %% Start building data vector
    data = [q_orig(:); q_s50(:); q_s25(:)];

    %% Append "HELLO" in ASCII binary using waveforms
    hello = 'HELLO';
    for c = hello
        ascii_val = double(c);
        % MSB-first bits
        bits = bitget(ascii_val, 8:-1:1);
        for b = bits
            if b == 1
                data = [data; q_s50(:)];  % 50Hz block for '1'
            else
                data = [data; q_s25(:)];  % 25Hz block for '0'
            end
        end
        % dead space between letters
        data = [data; zeros(dead_samples,1)];
    end

    %% Report sample counts
    len1 = numel(q_orig);
    len2 = numel(q_s50);
    len3 = numel(q_s25);
    hello_len = numel(data) - (len1+len2+len3);
    fprintf('Orig: %d | Sin50: %d | Sin25: %d\n', len1, len2, len3);
    fprintf('HELLO+dead: %d samples\n', hello_len);
    fprintf('Total samples: %d written to signals.mif\n', numel(data));

    %% Write .mif
    write_mif('signals.mif', data, 8);

    %% Read-back & plot
    data_rb = read_mif('signals.mif');
    figure;
    plot(data_rb);
    title('signals.mif with HELLO in 50Hz/25Hz blocks');
    xlabel('Sample Index');
    ylabel('Quantized Value (0–255)');
    grid on;
end

function q = quantize_to_8bit(x, max_val)
    x = x - min(x);
    x = x / max(x) * max_val;
    q = round(x);
end

function write_mif(fname, data_vec, n_bits)
    num = numel(data_vec);
    hex_w = ceil(n_bits/4);
    fid = fopen(fname,'w');
    fprintf(fid,'-- %d-sample signals with HELLO (8-bit)\n', num);
    fprintf(fid,'DEPTH = %d;\nWIDTH = %d;\nADDRESS_RADIX = DEC;\nDATA_RADIX = HEX;\nCONTENT\nBEGIN\n', num, n_bits);
    for addr = 0:num-1
        h = dec2hex(data_vec(addr+1), hex_w);
        fprintf(fid,'%d : %s;\n', addr, h);
    end
    fprintf(fid,'END;\n');
    fclose(fid);
end

function data_out = read_mif(fname)
    fid = fopen(fname,'r'); assert(fid>0);
    while true
        line = fgetl(fid);
        if startsWith(strtrim(line),'BEGIN'), break; end
    end
    data_out = [];
    while true
        line = strtrim(fgetl(fid));
        if ~ischar(line) || startsWith(line,'END'), break; end
        tok = regexp(line,'^\s*\d+\s*:\s*([0-9A-Fa-f]+)\s*;','tokens');
        if ~isempty(tok)
            data_out(end+1) = hex2dec(tok{1}{1}); %#ok<AGROW>
        end
    end
    fclose(fid);
end
