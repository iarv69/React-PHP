import React,{ Component } from'react';
import logo from './logo.svg';
import './App.css';
import axios from 'axios';


class App extends Component{
  
  state={
    test:""
  };
  
  handleAdd=async e =>{
    await this.setState({
      text:e.target.value
    })
  }
  
  handleSubmit=e=>{
    
    /*AXIOS*/
    e.preventDefault();
    console.log(this.state.text );

    
       let formData=new FormData();
    formData.append("text",this.state.text);
    const url="myPhpProj";

    /*const instance = axios.create();
    axios.post('https://example.com', form, { headers: form.getHeaders() })
*/
    axios.post(url,formData)
    .then(res=>console.log(res.data))
    .catch(err=>console.log(err));
  }

  render()
  {
    return(
    <div className="App-header">
      <input 
        onChange={this.handleAdd}
        className="form-control" 
        type="text" 
        id="text"/>
      <br/>
      <button 
        onClick={this.handleSubmit}
        className="btn btn-success" 
        id="submit"> Save </button>      
    </div>
    );
  }
}

export default App;
