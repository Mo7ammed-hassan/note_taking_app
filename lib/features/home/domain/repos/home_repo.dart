abstract class HomeRepo {
  // display notes (personal)
  Future getPersonalNotes(String box);
  // display notes (academic)
  Future getAcademicNotes(String box);
  // display notes (working)
  Future getWorkingNotes(String box);
  // display notes (other)
  Future getOtherNotes(String box);
}
