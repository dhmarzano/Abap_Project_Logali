@EndUserText.label: 'Comportamiento TRAVEL'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@Search.searchable: true
@ObjectModel.semanticKey: [ 'TravelID' ]
define root view entity ZC_TRAVEL_7557_A
  provider contract transactional_query
  as projection on ZI_TRAVEL_7557_A
{
  key TravelUUID,
      @Search.defaultSearchElement: true
      TravelID,
      @Search.defaultSearchElement: true
      @ObjectModel.text.element: [ 'AgencyName' ]
      AgencyID,
      _Agency.Name              as AgencyName,
      @Search.defaultSearchElement: true
      @ObjectModel.text.element: [ 'CustomerName' ]
      CustomerID,
      _Customer.LastName        as CustomerName,
      BeginDate,
      EndDate,
      BookingFee,
      TotalPrice,
      CurrencyCode,
      Description,
      OverallStatus,
      _OverallStatus._Text.Text as OverallStatusText : localized,
      LocalCreatedBy,
      LocalCreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt,
      
      /* Associations */
      _Agency,
      _Booking : redirected to composition child ZC_BOOKING_7557_A,
      _Currency,
      _Customer,
      _OverallStatus
}
