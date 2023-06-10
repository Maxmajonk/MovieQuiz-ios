//
//  QuestionFactoryDelegate.swift
//  MovieQuiz
//
//  Created by Mikhail Vostrikov on 26.05.2023.
//

import Foundation

protocol QuestionFactoryDelegate: AnyObject {
    var correctAnswers: Int { get set }
    var questionFactory: QuestionFactory? { get set }
    var viewController: MovieQuizViewController? { get set }
    
    func resetQuestionIndex()
    func switchToNextQuestion()
    func convert(model: QuizQuestion) -> QuizStepViewModel
    func answerButtonClicked(isYes: Bool)
    func didAnswer(isYes: Bool)
    func didReceiveQuestion(_ question: QuizQuestion)
    func proceedToNextQuestionOrResults()
    func makeResultMessage() -> String
    func showFinalResults()
    func didFailToLoadData(with error: Error)
    func didLoadDataFromServer()
}
