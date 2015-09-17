--
--@author trentyang
--

import("util/Properties");
import("util/Features");
import("util/Logger");
import("util/MiscUtils");

SystemUtils = {};

function SystemUtils.supportAmbientMode()
    return System.hasFeature(Features.SUPPORT_AMBIENT_MODE);
end

function SystemUtils.supportWeather()
    return System.hasFeature(Features.SUPPORT_WEATHER);
end

function SystemUtils.supportSensorStep()
    return System.hasFeature(Features.SUPPORT_SENSOR_STEP);
end

function SystemUtils.isRoundWatch()
    return System.getProperty(Properties.Hardware.WATCH_SHAPE_TYPE, Properties.Hardware.WATCH_SHAPE_ROUND) == Properties.Hardware.WATCH_SHAPE_ROUND;
end

function SystemUtils.isWatchDevice()
    return System.getProperty(Properties.Hardware.DEVICE_TYPE, Properties.Hardware.DEVICE_TYPE_WATCH) == Properties.Hardware.DEVICE_TYPE_WATCH;
end

function SystemUtils.isAmbientMode()
    return System.getBooleanProperty(Properties.Os.IN_AMBIENT_MODE);
end

function SystemUtils.isLowBitAmbientMode()
    return System.getBooleanProperty(Properties.Os.LOW_BIT_AMBIENT);
end

function SystemUtils.getWeatherProvider()
    return System.getProperty(Properties.Weather.PROVIDER);
end

function SystemUtils.getWeatherTemp(watchname)
    key = Properties.Weather.TEMPERATURE;
    if not MiscUtils.isEmpty(watchname) then
        key = watchname .. "." .. key;
    end
    return System.getIntProperty(key);    
end

function SystemUtils.getWeatherTempScale(watchname)
    key = Properties.Weather.TEMPERATURE_SCALE;
    if not MiscUtils.isEmpty(watchname) then
        key = watchname .. "." .. key;
    end
    return System.getProperty(key);
end

function SystemUtils.getWeatherStatus(watchname)
    key = Properties.Weather.STATUS;
    if not MiscUtils.isEmpty(watchname) then
        key = watchname .. "." .. key;
    end
    return System.getIntProperty(key);
end

function SystemUtils.getTodayStepCount()
    return System.getIntProperty(Properties.Sensor.Step.TODAY_COUNT);
end

function SystemUtils.getTodayStepGoal(watchname)
    key = Properties.Sensor.Step.TODAY_GOAL;
    if not MiscUtils.isEmpty(watchname) then
        key = watchname .. "." .. key;
    end
    return System.getIntProperty(key);
end

function SystemUtils.getWatchBatteryLevel()
    return System.getIntProperty(Properties.Os.WATCH_BATTERY_LEVEL);
end

function SystemUtils.getMoonPhase()
    --0-7
    return System.getIntProperty(Properties.Os.MOON_PHASE);
end

return SystemUtils;