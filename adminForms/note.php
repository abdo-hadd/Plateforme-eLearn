<div class="container marketing text-center col-md-10" >
  <h5 class="card-title mb-4">MARK LINK</h5>
  <?php include('../../Model/lib.php'); ?>
  <form id="note-Form">
    <div class="form-row">
      <div class="input-field col-20 s6">
         <input id="code" type="text" class="form-control validate" required="" autocomplete="off">
         <label for="code"> Apogee </label>
          <ul class="list-group" id="hint" style="position: absolute;z-index: 10;width: 97.5%;border-top: hidden;">
          </ul>
      </div>
      <div class="col-md-6 mb-4">
          <select class="custom-select " id="codem">
            <?php ?>
            <?php echo getModule();  ?>
          </select>
      </div>
    </div>
      <button type="submit" class="btn btn-primary btn-lg col-md-12">Add Student</button>
  </form>
</div>
