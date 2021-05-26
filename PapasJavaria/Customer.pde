import java.util.*;

class Customer{
  private boolean hamburger, fries, chicken, hotdog, pizza;
  private ArrayList<String> order;
  private ArrayList<String> hamburgerSteps = new ArrayList<String>(
  Arrays.asList("bun", "patty", "tomato", "lettuce", "onions", "bun"));
  private ArrayList<String> friesSteps = new ArrayList<String>(
  Arrays.asList("potato", "knife", "deep fry"));
  private ArrayList<String> chickenSteps = new ArrayList<String>(
  Arrays.asList("raw chicken", "fry mix", "deep fry"));
  private ArrayList<String> hotdogSteps = new ArrayList<String>(
  Arrays.asList("bun", "sausage", "ketchup", "mustard", "relish"));
  private ArrayList<String> pizzaSteps = new ArrayList<String>(
  Arrays.asList("dough", "tomato sauce", "cheese", "oven"));

  public void addStep(String step){
    order.add(step);
    if (step.equals("hamburger"))
      hamburger = true;
    if (step.equals("fries"))
      fries = true;
    if (step.equals("chicken"))
      chicken = true;
    if (step.equals("hotdog"))
      hotdog = true;
    if (step.equals("pizza"))
      pizza = true;
  }
  public boolean checkSteps(){
    boolean correct = true;
    if(hamburger){
      if (!order.equals(hamburgerSteps)){
        correct = false;
      }
    }
    if(fries){
      if (!order.equals(friesSteps)){
        correct = false;
      }
    }
    if(chicken){
       if (!order.equals(chickenSteps)){
        correct = false;
      }
    }
    if(hotdog){
      if (!order.equals(hotdogSteps)){
        correct = false;
      }
    }
    if(pizza){
      if (!order.equals(pizzaSteps)){
        correct = false;
      }
    }
    return correct;
  }
  public ArrayList<String> makeOrder(){
    return order;
  }
  public void restartOrder(){
    order.clear();
  }
}
