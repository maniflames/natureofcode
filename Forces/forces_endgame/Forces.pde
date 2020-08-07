interface ForceCalculator {
  PVector calculate(Ball ball, Container container); 
}

class Gravity implements ForceCalculator {
  PVector calculate(Ball ball, Container container) {
    return new PVector(0, 0.1 * ball.mass);
  }
}

class Friction implements ForceCalculator {
  PVector calculate(Ball ball, Container container) {
    
    PVector direction = ball.velocity.copy(); 
    direction.normalize();
    direction.mult(-1); 
    
    return direction.mult(0.04);
  }
}

class Fluid implements ForceCalculator {
  PVector calculate(Ball ball, Container container) {
    if(ball.position.y < (container.position.y + 50)) {
      return new PVector(0, 0);
    }
    
    PVector direction = ball.velocity.copy();
    float distance = direction.mag();
    direction.normalize();
    direction.mult(-0.5);
    
    float magnitude = pow(distance, 2) * 0.3;
    return direction.mult(magnitude); 
  }
}

class Gravitational implements ForceCalculator {
  PVector calculate(Ball ball, Container container) {
    PVector direction = PVector.sub(container.position, ball.position); 
    float distance = constrain(direction.mag(),  5, 20);
    direction.normalize();
    float magnitude = (0.7 * ball.mass * 40) / pow(distance, 2);
    
    return direction.mult(magnitude);
  }
}
