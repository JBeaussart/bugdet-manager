export const btnSeeMore = () => {
  const button = document.querySelector('.amount_month_tags_details')
  const amounts = document.querySelector('.amount_month_tags')

  button.addEventListener('click', () => {
    if (amounts.style.display === 'block') {
      amounts.style.display = 'none'
      button.innerHTML = 'Voir détails'
    } else {
      amounts.style.display = 'block';
      button.innerHTML = 'Voir moins'
    }
  })
}