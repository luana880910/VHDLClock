library ieee;
use ieee.std_logic_1164.all;

entity alarmDetection is
port(
timeS1:in std_logic_vector(3 downto 0);
timeS10:in std_logic_vector(3 downto 0);
timeM1:in std_logic_vector(3 downto 0);
timeM10:in std_logic_vector(3 downto 0);
timeH1:in std_logic_vector(3 downto 0);
timeH10:in std_logic_vector(3 downto 0);
alarmS1:in std_logic_vector(3 downto 0);
alarmS10:in std_logic_vector(3 downto 0);
alarmM1:in std_logic_vector(3 downto 0);
alarmM10:in std_logic_vector(3 downto 0);
alarmH1:in std_logic_vector(3 downto 0);
alarmH10:in std_logic_vector(3 downto 0);
alarmSent:out std_logic
);
end alarmDetection;

architecture a of alarmDetection is
signal tempS1: std_logic;
signal tempS10: std_logic;
signal tempM1: std_logic;
signal tempM10: std_logic;
signal tempH1: std_logic;
signal tempH10: std_logic;
signal tempVS1: std_logic_vector(3 downto 0);
signal tempVS10: std_logic_vector(3 downto 0);
signal tempVM1: std_logic_vector(3 downto 0);
signal tempVM10: std_logic_vector(3 downto 0);
signal tempVH1: std_logic_vector(3 downto 0);
signal tempVH10: std_logic_vector(3 downto 0);

begin

tempVS1 <= (timeS1 XOR alarmS1);
tempVS10 <= (timeS10 XOR alarmS10);
tempVM1 <= (timeM1 XOR alarmM1);
tempVM10 <= (timeM10 XOR alarmM10);
tempVH1 <= (timeH1 XOR alarmH1);
tempVH10 <= (timeH10 XOR alarmH10);
tempS1 <= tempVS1(0) OR tempVS1(1) OR tempVS1(2) OR tempVS1(3);
tempS10 <= tempVS10(0) OR tempVS10(1) OR tempVS10(2) OR tempVS10(3);
tempM1 <= tempVM1(0) OR tempVM1(1) OR tempVM1(2) OR tempVM1(3);
tempM10 <= tempVM10(0) OR tempVM10(1) OR tempVM10(2) OR tempVM10(3);
tempH1 <= tempVH1(0) OR tempVH1(1) OR tempVH1(2) OR tempVH1(3);
tempH10 <= tempVH10(0) OR tempVH10(1) OR tempVH10(2) OR tempVH10(3);
alarmSent <= tempS1 OR tempS10 OR tempM1 OR tempM10 OR tempH1 OR tempH10;
end a;