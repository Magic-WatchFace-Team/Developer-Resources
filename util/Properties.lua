--
--@author trentyang
--

Properties = {};

Properties.Hardware = {};
Properties.Hardware.WATCH_SHAPE_TYPE = "hw.watch_shape_type";
Properties.Hardware.WATCH_SHAPE_ROUND = "round";
Properties.Hardware.WATCH_SHAPE_RECT = "rect";
Properties.Hardware.DEVICE_TYPE = "hw.device_type";
Properties.Hardware.DEVICE_TYPE_PHONE = "phone";
Properties.Hardware.DEVICE_TYPE_WATCH = "watch";

Properties.Os = {};
Properties.Os.VERSION_CODE = "os.version_code";
Properties.Os.VERSION_NAME = "os.version_name";
Properties.Os.NAME = "os.name";
Properties.Os.IN_AMBIENT_MODE = "os.in_ambient_mode";
Properties.Os.LOW_BIT_AMBIENT = "os.low_bit_ambient";
Properties.Os.WATCH_BATTERY_LEVEL = "os.watch_battery_level";
Properties.Os.MOON_PHASE = "os.moon_phase";

Properties.Weather = {};
Properties.Weather.PROVIDER = "weather.provider";
Properties.Weather.TEMPERATURE = "weather.temperature";
Properties.Weather.TEMPERATURE_SCALE = "weather.temperature_scale"; --温度单位°C/°F
Properties.Weather.STATUS = "weather.status";
Properties.Weather.INVALID_TEMPERATURE = 2147483647; --无效的温度
Properties.Weather.TEMPERATURE_SCALE_CELSIUS = "°C";
Properties.Weather.TEMPERATURE_SCALE_FAHRENHEIT = "°F";
    
Properties.Sensor = {};
Properties.Sensor.Step = {};
Properties.Sensor.Step.TODAY_COUNT = "sensor.step.today_count";
Properties.Sensor.Step.TODAY_GOAL = "sensor.step.today_goal";

return Properties;
