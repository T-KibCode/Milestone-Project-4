--@block INSERT INTO 
DROP TABLE cards

--@block 

-- Create Users table
CREATE TABLE Users (
    User_ID INT PRIMARY KEY,
    Username VARCHAR(255),
    Email VARCHAR(255),
    Password VARCHAR(255)
);

-- Create Services table
CREATE TABLE Services (
    Service_ID INT PRIMARY KEY,
    Service_Name VARCHAR(255),
    Service_Description VARCHAR(255),
    Service_Price DECIMAL(10,2)
);

-- Create Orders table
CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    User_ID INT,
    Service_ID INT,
    Order_Date DATE,
    -- Add other order-related fields here
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID),
    FOREIGN KEY (Service_ID) REFERENCES Services(Service_ID)
);

-- Create Songs table
CREATE TABLE Songs (
    Song_ID INT PRIMARY KEY,
    User_ID INT,
    Song_Title VARCHAR(255),
    Song_File_Path VARCHAR(255),
    -- Add other song-related fields here
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID)
);

-- Create Videos table
CREATE TABLE Videos (
    Video_ID INT PRIMARY KEY,
    User_ID INT,
    Video_Title VARCHAR(255),
    Video_File_Path VARCHAR(255),
    -- Add other video-related fields here
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID)
);

-- Create Discounts table
CREATE TABLE Discounts (
    Discount_ID INT PRIMARY KEY,
    Discount_Code VARCHAR(255),
    Discount_Amount DECIMAL(10,2),
    Minimum_Order_Amount DECIMAL(10,2)
);

-- Add Discount_ID column in Orders table
ALTER TABLE Orders
ADD Discount_ID INT,
ADD FOREIGN KEY (Discount_ID) REFERENCES Discounts(Discount_ID);
