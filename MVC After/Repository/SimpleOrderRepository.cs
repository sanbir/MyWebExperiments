using System;
using System.Data;
using SalesModel.DataLayer;
using SalesModel.DomainClasses;


namespace Repository
{
  public class SimpleOrderRepository:IDisposable
  {
    readonly SalesModelContext _context = new SalesModelContext();

    public void Save()
    {
      _context.SaveChanges();
    }

    public void Dispose()
    {
      _context.Dispose(); 
    }

    public Order GetOrderById(int id)
    {
      return _context.Orders.Find(id);
    }

    public void AddNewOrder(Order order)
    {
      _context.Orders.Add(order);
    }

    public void UpdateOrder(Order order)
    {
      _context.Entry(order).State = EntityState.Modified;
  
    }

    public void DeleteOrder(int id)
    {
      var order = _context.Orders.Find(id);
      _context.Orders.Remove(order);
    }
  }
}
