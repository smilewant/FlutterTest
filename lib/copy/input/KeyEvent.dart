class KeyEvent {
  String key;
  KeyEvent(this.key);


  bool isDelete() => this.key == "del";
  bool isCommit() => this.key == "commit";
}