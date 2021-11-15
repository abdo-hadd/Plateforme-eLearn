<div class="container marketing text-center col-md-10" >
  <h5 class="card-title mb-4">Module INFO</h5>
  <?php include('../../Model/lib.php'); ?>
  <form id="module-Form">
      <div class="input-field col-20 s6">
        <input id="codem" type="text" maxlength="5" class="form-control validate" required>
        <label for="codem"> Code Module </label>
      </div>
      <div class="input-field col-20 s6">
        <input id="nom" type="text" maxlength="30" class="form-control validate" required>
        <label for="nom"> Nom Module </label>
      </div>
      <div class="form-row">
      <div class="col-md-6 mb-4">
          <select class="custom-select " id="matricule">
            <?php echo getProfessor();  ?>
          </select>
      </div>
      <div class="col-md-6 mb-4">
          <select class="custom-select " id="codec">
             <?php echo getClasse();  ?>
          </select>
      </div>
    </div>
      <button type="submit" class="btn btn-primary btn-lg col-md-12">Add Module</button>
  </form>
</div>
