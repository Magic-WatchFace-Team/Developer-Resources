--
--@author trentyang
--

GraphicsUtils = {};

local WEEK_DAY_ENGLISH = { "SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT" };
local MONTH_DAY_ENGLISH = {
    "1st", "2nd", "3rd", "4th", "5th", "6th", "7th", "8th", "9th", "10th",
    "11th", "12th", "13th", "14th", "15th", "16th", "17th", "18th", "19th", "20th",
    "21st", "22nd", "23rd", "24th", "25th", "26th", "27th", "28th", "29th", "30th", "31st"
};

local MONTH_ENGTH_ABBR = {
    "Jan.", "Feb.", "Mar.", "Apr.", "May", "June", "July", "Aug.", "Sept.", "Oct.", "Nov.", "Dec."
};


function GraphicsUtils.getHourDegrees()
    local hour, minute, second, year, month, yday, mday, wday = System.getTime();
    return (hour + (minute / 60)) / 12 * 360;
end

function GraphicsUtils.getMinuteDegrees()
    local hour, minute, second, year, month, yday, mday, wday = System.getTime();
    return minute / 60 * 360;
end

function GraphicsUtils.getSecondDegrees()
    local hour, minute, second, year, month, yday, mday, wday = System.getTime();
    return second / 60 * 360;
end

function GraphicsUtils.getSecondMsDegrees()
    local hour, minute, second, year, month, yday, mday, wday, secondMs = System.getTime();
    return (second + (secondMs % 1000) / 1000) / 60 * 360;
end

function GraphicsUtils.getMonthDegrees()
    local hour, minute, second, year, month, yday, mday, wday = System.getTime();
    return (month + 1) / 12 * 360;
end

function GraphicsUtils.getScale(srcWidth, srcHeight, dstWidth, dstHeight)
    local scaleW = dstWidth / srcWidth;
    local scaleH = dstHeight / srcHeight;
    if (scaleW > scaleH) then
        return scaleH;
    end
    return scaleW;
end

function GraphicsUtils.getWeekDayEnglish(wday)
    --lua数组index从1开始，wday=0-6
    return WEEK_DAY_ENGLISH[wday + 1] .. ".";
end

function GraphicsUtils.getWeekDayEnglishNoSuffixDot(wday)
    return WEEK_DAY_ENGLISH[wday + 1];
end

function GraphicsUtils.getMonthDayEnglish(mday)
    --lua数组index从1开始，mday=1-31
    return MONTH_DAY_ENGLISH[mday];
end

function GraphicsUtils.getMonthAbbrEnglish(m, withSuffixDot)
    --month 0-11
    local monthAbbr = MONTH_ENGTH_ABBR[m+1];
    if not withSuffixDot then
        local len = string.len(monthAbbr);
        if len > 0 and string.sub(monthAbbr, len, len) == "." then
            monthAbbr = string.sub(monthAbbr, 1, len-1);
        end
    end
    
    return monthAbbr;
end

return GraphicsUtils;
