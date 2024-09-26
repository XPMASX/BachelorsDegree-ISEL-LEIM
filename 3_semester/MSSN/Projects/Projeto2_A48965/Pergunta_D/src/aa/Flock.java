package aa;

import physics.Body;
import processing.core.PApplet;
import processing.core.PVector;
import simple_subplot.SubPlot;

import java.util.ArrayList;
import java.util.List;

public class Flock {
    private List<Boid> boids;

    public Flock(int nboids, float mass, float radius, int color,
                 float[] sacWeights, PApplet p, SubPlot plt) {
        double[] w = plt.getWindow();
        boids = new ArrayList<Boid>();
        for (int i = 0; i < nboids; i++) {
            float x = p.random((float) w[0], (float) w[1]);
            float y = p.random((float) w[2], (float) w[3]);
            Boid b = new Boid(new PVector(x,y), mass, radius,
                    color, p, plt);
            b.addBehaviour(new Separate(sacWeights[0]));
            b.addBehaviour(new Align(sacWeights[1]));
            b.addBehaviour(new Cohesion(sacWeights[2]));
            boids.add(b);
        }

        List<Body> bodies = boidList2BodyList(boids);
        for (Boid b : boids) {
            b.setEye(new Eye(b, bodies));
        }
    }

    private List<Body> boidList2BodyList(List<Boid> boids)
    {
        List<Body> bodies = new ArrayList<Body>();
        for (Boid b : boids) {
            bodies.add(b);
        }
        return bodies;
    }

    public int getNboids()
    {
        return boids.size();
    }

    public Boid getBoid(int i)
    {
        return boids.get(i);
    }

    public void applyBehaviour(float dt)
    {
        for (Boid b : boids) {
            b.applyBehaviours(dt);
        }
    }

    public void removeBoid(int i)
    {
        boids.remove(boids.get(i));
    }

    public void display(PApplet p, SubPlot plt)
    {
        for (Boid b : boids) {
            b.display(p, plt);
        }
    }
}
