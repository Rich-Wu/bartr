var LatestOffers = createReactClass({
  getInitialState() {
    return {offers: []}
  },
  componentDidMount() {
    $.getJSON('/api/commodities', (response) => {
      this.setState({commodities: response});
    })
    $.getJSON('/api/offers', (response) => {
      this.setState({offers: response});
    });
  },
  render() {
    var offers = this.state.offers.map((offer) => {
      var item = this.state.commodities.filter(commodity => commodity.id === offer.commodity_id);
      return(
        <div key={offer.id} className="offerCard" id={'offer-'+offer.id}>
          <h3>{offer.quantity} {offer.unit} of {item[0].name}</h3>
        </div>
      )
    })
    return(
      <div className = "offers">
        {offers}
      </div>
    )
  }
})
