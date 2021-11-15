<div class="container marketing text-center col-md-10" >
  <h5 class="card-title mb-4">Account INFO</h5>
  <form id="account-Form">
    <div class="form-row">
      <div class="col-md-6 mb-4">
          <select class="custom-select " id="type">
            <option value="Stud"  selected>Student</option>
            <option value="Prof"  >Professeor</option>
          </select>
      </div>
      <div class="input-field col-20 s6">
          <input id="code" type="text" maxlength="11" class="form-control validate" required=""  autocomplete="off" >
          <label for="code"> Code </label>
          <ul class="list-group" id="hint" style="position: absolute;z-index: 10;width: 97.5%;border-top: hidden;"></ul>
          <style>
            #hint{
               top: 50px;
            }
          </style>
      </div>
    </div>
      <div class="input-field col-20 s6">
        <input id="username" type="text" maxlength="20" class="form-control validate" required>
        <label for="username"> User Name </label>
      </div>
      <div class="input-field col-20 s6">
        <input id="pass" type="PassWord"  class="form-control validate" required>
        <label for="pass"> Password </label>
      </div>

      <button type="submit" class="btn btn-primary btn-lg col-md-12">Add Student</button>
  </form>
</div>
