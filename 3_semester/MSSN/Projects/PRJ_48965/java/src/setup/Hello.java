package setup;
import processing.core.PApplet;

public class Hello implements IProcessingApp {

    private int color;
    public void setup(PApplet p)
    {
        color=p.color(255,0,0);
    }

    public void draw(PApplet p, float dt)
    {
        p.fill(color);
        p.circle(p.mouseX,p.mouseY,50);
    }

    public void mousePressed(PApplet p)
    {
        color= p.color(0,255,0);
    }

    @Override
    public void keyPressed(PApplet p) {

    }

    @Override
    public void mouseReleased(PApplet p) {

    }

    @Override
    public void mouseDragged(PApplet p) {

    }

}