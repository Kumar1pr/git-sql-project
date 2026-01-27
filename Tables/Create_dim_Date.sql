CREATE TABLE dim_Date (
    DateKey INT PRIMARY KEY,
    DateValue DATE NOT NULL,
    Year INT NOT NULL,
    Month INT NOT NULL,
    MonthName NVARCHAR(20) NOT NULL,
    Day INT NOT NULL,
    Quarter INT NOT NULL,
    DayOfWeek INT NOT NULL,
    DayOfWeekName NVARCHAR(20) NOT NULL,
    WeekNumber INT NOT NULL,
    IsWeekend BIT NOT NULL,
    IsHoliday BIT NOT NULL,
    HolidayName NVARCHAR(50) NULL,
    FiscalYear INT NULL,
    FiscalQuarter INT NULL,
    IsLeapYear BIT NOT NULL,
    DayOfYear INT NOT NULL,
    UNIQUE(DateValue)
);

-- Create indexes for query optimization
CREATE NONCLUSTERED INDEX IX_dim_Date_DateValue ON dim_Date(DateValue);

CREATE NONCLUSTERED INDEX IX_dim_Date_Year_Quarter_Month ON dim_Date(Year, Quarter, Month);

CREATE NONCLUSTERED INDEX IX_dim_Date_IsHoliday ON dim_Date(IsHoliday);

CREATE NONCLUSTERED INDEX IX_dim_Date_IsWeekend ON dim_Date(IsWeekend);

CREATE NONCLUSTERED INDEX IX_dim_Date_FiscalYear ON dim_Date(FiscalYear);