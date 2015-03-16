// public use - use how you want or need
// http://github.com/ergobot/rover

#include <AFMotor.h>

// motors 
// left is left motor right is right motor
AF_DCMotor left;
AF_DCMotor right;


// Adafruit Motor shield library
// copyright Adafruit Industries LLC, 2009
// this code is public domain, enjoy!

void setup() {
	// 115200 for the bluetooth
	Serial.begin(115200);
	Serial.println("Starting up");
}

void loop(){
	if(Serial.available() > 0){
		char ch = Serial.read();
		
		// Forward full
		if(ch == '1'){
			// Set direction
			left.run(FORWARD);
			right.run(FORWARD);
			
			// Set the speed
			left.setSpeed(255);
			right.setSpeed(255);
		} 
		// Forward left
		if(ch == '2') {
			// Set direction
			left.run(FORWARD);
			right.run(FORWARD);
			
			// Set the speed
			left.setSpeed(180);
			right.setSpeed(255);
		}
		// Forward right
		if(ch == '3'){
			// Set direction
			left.run(FORWARD);
			right.run(FORWARD);
			
			// Set the speed
			left.setSpeed(255);
			right.setSpeed(180);
		}
		// Left
		if(ch == '4'){
			// Set direction
			left.run(BACKWARD);
			right.run(FORWARD);
			
			// Set the speed
			left.setSpeed(255);
			right.setSpeed(255);
		}
		// Right
		if(ch == '5'){
			// Set direction
			left.run(FORWARD);
			right.run(BACKWARD);
			
			// Set the speed
			left.setSpeed(255);
			right.setSpeed(255);
		}
		// Reverse full
		if(ch == '6'){
			// Set direction
			left.run(BACKWARD);
			right.run(BACKWARD);
			
			// Set the speed
			left.setSpeed(255);
			right.setSpeed(255);
		}
		// Reverse left
		if(ch == '7'){
			// Set direction
			left.run(BACKWARD);
			right.run(BACKWARD);
			
			// Set the speed
			left.setSpeed(180);
			right.setSpeed(255);
		}
		// Reverse right
		if(ch == '8'){
			// Set direction
			left.run(BACKWARD);
			right.run(BACKWARD);
			
			// Set the speed
			left.setSpeed(255);
			right.setSpeed(180);
		}
		// Both stop
		if(ch == '9'){
			// Set direction
			left.run(RELEASE);
			right.run(RELEASE);
		} 
	}
}