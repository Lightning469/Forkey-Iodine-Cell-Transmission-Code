function [wn, trans, temp_cell, p_vpr] = forkeycode_fortranread(filename)

[data, delimiter, n_hdr] = importdata(filename);

% Cell temperature / K
text_temp = data.textdata{3};
temp_str = extractBetween(text_temp, '# TEMP = ','K #');
temp_cell = str2double(temp_str);

% Vapor pressure / Torr
text_pres = data.textdata{4};
p_str = extractBetween(text_pres, '# PRES = ','TORR #');
p_vpr = str2double(p_str);

% Filter data (wavenumbers / cm^(-1) & transmission)
wn = data.data(:,1);
trans = data.data(:,2);