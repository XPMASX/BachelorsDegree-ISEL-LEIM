package tp3.XML;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.w3c.dom.*;

/**
 * Classe abstracta que representa um Evento.
 * 
 * @version 1.0 
 * @author Docentes da Disciplina de Modelação e Programação, LEIM, Instituto Superior de Engenharia de Lisboa
 *
 */
public abstract class Evento {

	public String nome;

	public Evento(String nome) {
		this.nome = nome;
	}

	public String getNome() {
		return nome;
	}

	public abstract int getNumBilhetes();

	public abstract String[] getArtistas();

	public abstract int numActuacoes(String artista);

	/**
	 * Cria um novo Elemento contendo todas as informações deste Evento.
	 *
	 * @param doc o documento que irá gerar o novo Elemento.
	 * @return um Elemento que represnta o Evento na arvore XML
	 */
	public abstract Element createElement(Document doc);

	/**
	 * Retorna uma String contendo informações sobre o Evento.
	 * Nota: Ver o ficheiro OutputPretendido.txt
	 */
	public String toString() {
		return this.nome + " com " + getNumBilhetes() + " bilhetes e com os artistas " + Arrays.toString(getArtistas());
	}

	/**
	 * Escreve, para a consola, o prefixo seguido da String representativa do Evento.
	 *
	 * @param prefix - Um prefixo para gerar a identação apropriada de acordo com a "profundidade".
	 */
	public void print(String prefix) {

		System.out.println(" " + this);
	}

	/**
	 * Constroi um novo Evento (Espetáculo ou Festival) a partir das informações existentes no nó
	 * nNode que foi lido da arvore XML.
	 *
	 * @param nNode o nó/elemento contendo a informação do Evento.
	 * @return o novo Evento associado a esse nNode.
	 */
	public static Evento build(Node nNode) { //TODO
		Evento evento = null;

		if (nNode.getNodeName().equals("Espetaculo")) evento = Espetaculo.build(nNode);
		else if (nNode.getNodeName().equals("Festival")) evento = Festival.build(nNode);

		return evento;
	}

}
