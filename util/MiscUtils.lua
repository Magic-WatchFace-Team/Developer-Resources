--
--@author trentyang
--

MiscUtils = {};

function MiscUtils.isEmpty(str)
    if (str == nil or str == "") then
        return true;
    end
    return false;
end

function MiscUtils.isNotEmpty(str)
    return not MiscUtils.isEmpty(str);
end

return MiscUtils;
