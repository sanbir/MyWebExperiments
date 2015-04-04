using System.Web.Mvc;
using Repository;
using SalesModel.DomainClasses;


namespace MvcSales.Controllers
{
    public class CustomerController : Controller
    {
      private readonly SimpleCustomerRepository _repository = new SimpleCustomerRepository();

        public ActionResult Index()
        {
            return View(_repository.GetCustomers());
        }

      
        public ActionResult Create()
        {
            return View();
        }

   
        [HttpPost]
        public ActionResult Create(Customer customer)
        {
            if (ModelState.IsValid)
            {
                _repository.AddNewCustomer(customer);
                _repository.Save();
                return RedirectToAction("Index");
            }

            return View(customer);
        }

        public ActionResult Edit(int id = 0)
         {
          var customer = _repository.GetCustomerGraph(id);
            if (customer == null)
            {
                return HttpNotFound();
            }
            return View(customer);
        }

       
        [HttpPost]
        public ActionResult Edit(Customer customer)
        {
            if (ModelState.IsValid)
            {
                _repository.UpdateCustomer(customer);
                _repository.Save();
                return RedirectToAction("Index");
            }
            return View(customer);
        }

      
        public ActionResult Delete(int id = 0)
        {
          var customer = _repository.GetCustomerById(id);
            if (customer == null)
            {
                return HttpNotFound();
            }
            return View(customer);
        }


        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
          _repository.DeleteCustomer(id);  
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            _repository.Dispose();
            base.Dispose(disposing);
        }
    }
}