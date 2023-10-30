@EndUserText.label: 'Interfaz Travel'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity ZI_TRAVEL_7557_A
  provider contract transactional_interface
  as projection on ZR_TRAVEL_7557_A

{
  key TravelUUID,
      TravelID,
      AgencyID,
      CustomerID,
      BeginDate,
      EndDate,
      BookingFee,
      TotalPrice,
      CurrencyCode,
      Description,
      OverallStatus,
      LocalCreatedBy,
      LocalCreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt,
      /* Associations */
      _Agency,
      _Booking : redirected to composition child ZI_BOOKING_7557_A,
      _Currency,
      _Customer,
      _OverallStatus
}
