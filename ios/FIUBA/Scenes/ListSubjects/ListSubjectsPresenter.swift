//
//  ListSubjectsPresenter.swift
//  FIUBA
//

import Foundation

class ListSubjectsPresenter: ListSubjectsInteractorOutput {
    weak var output: ListSubjectsViewProtocol!
  
    // MARK: Presentation logic
  
    func presentFetchedSubjects(_ response: ListSubjects.Response) {
        var displayedSubjects: [ListSubjects.ViewModel.DisplayedSubject] = []

        for subject in response.subjects {
            let displayedSubject = ListSubjects.ViewModel.DisplayedSubject(
                id: subject.id ?? "", code: subject.code ?? "", name: subject.name ?? "")
            displayedSubjects.append(displayedSubject)
        }
        output.displayFetchedSubjects(ListSubjects.ViewModel(displayedSubjects: displayedSubjects))
    }

}
