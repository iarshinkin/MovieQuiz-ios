import UIKit

final class MovieQuizViewController: UIViewController {
    // MARK: - Lifecycle
    
    @IBOutlet private weak var questionCountrer: UILabel!
    @IBOutlet private weak var moviePoster: UIImageView!
    @IBOutlet private weak var questionLabel: UILabel!

    private var counter = 0
    
    private var correctAnswersCounter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let question = questions[0]
        
        questionCountrer.text = "1/\(questions.count)"
        moviePoster.image = UIImage(named: question.image)
        questionLabel.text = question.text
    }
    
    func nextQuestion() {
        
        
        if counter == questions.count-1 {
            return
        }
        
        counter+=1
        
        let question = questions[counter]
        
        questionCountrer.text = "\(counter+1)/\(questions.count)"
        moviePoster.image = UIImage(named: question.image)
        questionLabel.text = question.text
        
    }
    
    @IBAction func yesButtonClicked(_ sender: UIButton) {
        let correctAnswer = questions[counter].correctAnswer
        if correctAnswer {
            /*suda zelenyu ramku*/
            correctAnswersCounter+=1
        } else {
            /*suda krasnuy ramku*/
        }
            
        nextQuestion()
    }
    
    @IBAction func noButtonClicked(_ sender: UIButton) {
        let correctAnswer = questions[counter].correctAnswer
        if !correctAnswer {
            /*suda zelenyu ramku*/
            correctAnswersCounter+=1
        } else {
            /*suda krasnyu ramku*/
        }
        nextQuestion()
    }
    
    struct QuizQuestion {
    let image: String
    let text: String
    let correctAnswer: Bool
    }
 
    private let questions: [QuizQuestion] = [
            QuizQuestion(
                image: "The Godfather",
                text: "Рейтинг этого фильма больше чем 6?",
                correctAnswer: true),
            QuizQuestion(
                image: "The Dark Knight",
                text: "Рейтинг этого фильма больше чем 6?",
                correctAnswer: true),
            QuizQuestion(
                image: "Kill Bill",
                text: "Рейтинг этого фильма больше чем 6?",
                correctAnswer: true),
            QuizQuestion(
                image: "The Avengers",
                text: "Рейтинг этого фильма больше чем 6?",
                correctAnswer: true),
            QuizQuestion(
                image: "Deadpool",
                text: "Рейтинг этого фильма больше чем 6?",
                correctAnswer: true),
            QuizQuestion(
                image: "The Green Knight",
                text: "Рейтинг этого фильма больше чем 6?",
                correctAnswer: true),
            QuizQuestion(
                image: "Old",
                text: "Рейтинг этого фильма больше чем 6?",
                correctAnswer: false),
            QuizQuestion(
                image: "The Ice Age Adventures of Buck Wild",
                text: "Рейтинг этого фильма больше чем 6?",
                correctAnswer: false),
            QuizQuestion(
                image: "Tesla",
                text: "Рейтинг этого фильма больше чем 6?",
                correctAnswer: false),
            QuizQuestion(
                image: "Vivarium",
                text: "Рейтинг этого фильма больше чем 6?",
                correctAnswer: false)
        ]
    
}
