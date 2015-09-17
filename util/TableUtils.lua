--
--@author trentyang
--

TableUtils = {};

function TableUtils.merge(source1, source2)
    local target = {};
    for k, v in pairs(source1) do
        target[k] = v;
    end
    for k, v in pairs(source2) do
        target[k] = v;
    end
    return target;
end

function TableUtils.copy(source, target)
    for k, v in pairs(source) do
        target[k] = v;
    end
    return target;
end

return TableUtils;
