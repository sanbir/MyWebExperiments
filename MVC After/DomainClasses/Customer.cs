using System;
using System.Collections.Generic;

namespace SalesModel.DomainClasses
{
  public class Customer:StateInfo
  {
    private ICollection<Address> _addresses;
    private ICollection<Order> _orders;
    private string _firstName;
    private string _lastName;
    private DateTime _dateOfBirth;

    public Customer()
    {
      FirstName = "";
      LastName = "";
      DateOfBirth = DateTime.Today;
      _orders = new List<Order>();
      _addresses = new List<Address>();
      IsDirty = false;
    }

    public int CustomerId { get; set; }
    public string FirstName
    {
      get { return _firstName; }
      set
      {
        if (value == _firstName) return;
        _firstName = value;
        OnPropertyChanged();
        OnPropertyChanged("FullName");
      }
    }

    public string LastName
    {
      get { return _lastName; }
      set
      {
        if (value == _lastName) return;
        _lastName = value;
        OnPropertyChanged();
        OnPropertyChanged("FullName");
      }
    }

    public DateTime DateOfBirth
    {
      get { return _dateOfBirth; }
      set
      {
        if (value.Equals(_dateOfBirth)) return;
        _dateOfBirth = value;
        OnPropertyChanged();
      }
    }

    public  ContactDetail ContactDetail { get; set; }

    public ICollection<Order> Orders
    {
      get { return _orders; }
      set { _orders = value; }
    }
    public ICollection<Address> Addresses
    {
      get { return _addresses; }
      set { _addresses = value; }
    }

    public string FullName
    {
      get
      {
        return LastName.Trim() + ", " + FirstName;
      }
    }
    public DateTime LastUpdated
    {
      get
      {
        if (ContactDetail != null)
        {
          return ModifiedDate > ContactDetail.ModifiedDate
                   ? ModifiedDate
                   : ContactDetail.ModifiedDate;
        }
        return ModifiedDate;
      }
    }
  }
}