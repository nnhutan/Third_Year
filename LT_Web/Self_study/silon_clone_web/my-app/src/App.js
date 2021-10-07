import './App.css';
import Banner from './components/Banner';
import Copyright from './components/Copyright';
import Feature from './components/Feature';
import FeaturedProduct from './components/FeaturedProduct';
import FollowUs from './components/FollowUs';
import Footer from './components/Footer';
import Header from './components/Header';
import HeaderInfo from './components/HeaderInfo';
import MostPopular from './components/MostPopular';
import SaleOffInfo from './components/SaleOffInfo';
import SilonJournal from './components/SilonJournal';
import TrendingProduct from './components/TrendingProduct';

function App() {
  return (
    <div className="App">
      <HeaderInfo />
      <Header />
      <Banner />
      <FeaturedProduct />
      <SaleOffInfo />
      <MostPopular />
      <Feature />
      <TrendingProduct />
      <SilonJournal />
      <FollowUs />
      <Footer />
      <Copyright />
    </div>
  );
}

export default App;
