using System.Web.Mvc;
using Repository;
using SalesModel.DomainClasses;

namespace MvcSales.Controllers
{
    public class OrderController : Controller
    {
      private readonly SimpleOrderRepository _repository = new SimpleOrderRepository();

 
        public ActionResult Create(int customerId)
        {
          ViewBag.CustomerId = customerId;
            return View();
        }

        [HttpPost]
        public ActionResult Create(Order order)
        {
            if (ModelState.IsValid)
            {
              _repository.AddNewOrder(order);
              _repository.Save();
              return RedirectToAction("Edit", "Customer", new { id = order.CustomerId });
 
            }

            return View(order);
        }

    
        public ActionResult Edit(int id ,int customerId)
        {
          ViewBag.CustomerId = customerId;
          var order = _repository.GetOrderById(id);
            if (order == null)
            {
                return HttpNotFound();
            }
            return View(order);
        }

      [HttpPost]
        public ActionResult Edit(Order order)
        {
            if (ModelState.IsValid)
            {
              _repository.UpdateOrder(order);
              _repository.Save();
                return RedirectToAction("Edit","Customer",new {id=order.CustomerId});
            }
            return View(order);
        }

       public ActionResult Delete(int id = 0)
        {
          var order = _repository.GetOrderById(id);
            if (order == null)
            {
                return HttpNotFound();
            }
            return View(order);
        }

      
        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
          _repository.DeleteOrder(id); 
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            _repository.Dispose();
            base.Dispose(disposing);
        }
    }
}