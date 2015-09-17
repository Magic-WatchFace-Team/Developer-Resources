--
--@author trentyang
--

Logger = {};

-- v > d > i > w > e
local LOG_LEVEL_V = 5;
local LOG_LEVEL_D = 4;
local LOG_LEVEL_I = 3;
local LOG_LEVEL_W = 2;
local LOG_LEVEL_E = 1;
local LOG_LEVEL_OFF = 0;

local LOG_LEVEL = LOG_LEVEL_OFF;
local LOG_TAG = "lua";

function Logger.v(msg)
    if (LOG_LEVEL >= LOG_LEVEL_V) then
        Log.v(LOG_TAG, tostring(msg));
    end
end

function Logger.d(msg)
    if (LOG_LEVEL >= LOG_LEVEL_D) then
        Log.d(LOG_TAG, tostring(msg));
    end
end

function Logger.i(msg)
    if (LOG_LEVEL >= LOG_LEVEL_I) then
        Log.i(LOG_TAG, tostring(msg));
    end
end

function Logger.w(msg)
    if (LOG_LEVEL >= LOG_LEVEL_W) then
        Log.w(LOG_TAG, tostring(msg));
    end
end

function Logger.e(msg)
    if (LOG_LEVEL >= LOG_LEVEL_E) then
        Log.e(LOG_TAG, tostring(msg));
    end
end

return Logger;
