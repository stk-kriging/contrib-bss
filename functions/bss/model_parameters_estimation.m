function model = model_parameters_estimation (options, xi, yi)

tmp = options.param_estim (options.model, xi, yi);

if (isstruct (tmp)) && (isfield (tmp, 'param'))
    % as in STK 3.x
    model = tmp;
else
    % as in STK 2.x
    model = options.model;
    model.param = tmp;
end

end % function
