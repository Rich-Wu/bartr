var LatestOffers = createReactClass({
  getInitialState() {
    return {offers: []}
  },
  componentDidMount() {
    $.getJSON('/api/offers', (response) => { this.setState({offers: response}) });
    console.log(this.state);
  },
  render() {
    var offers = this.state.offers.map((offer) => {
      return(
        <div key={offer.id}>
          <h3>{offer.quantity}</h3>
        </div>
      )
    })
    return(
      <div>
        {offers}
      </div>
    )
  }
})
