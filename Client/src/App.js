import React, { Component } from "react";
import "./App.css";
import axios from "axios";
import { Container, Row, Col } from "react-bootstrap";
import "bootstrap/dist/css/bootstrap.css";
import {
  LineChart,Line,XAxis,YAxis,CartesianGrid,Tooltip,Legend,ResponsiveContainer,
} from "recharts";
class App extends Component {
  state = {
    sdata: {},
    udata: {},
  };

  handlePlotS = (e) => {
    e.preventDefault();
    const url = "http://localhost:80/myPhpProj/index.php";

    /*let formData=new FormData();
    formData.append('text',this.state.text);
    
    axios.post(url,formData)
    .then(res=>console.log(res.data))
    .catch(err=>console.log(err));
  */

    axios
      .post(url, { action: 'sRequest' }) //, {
      .then((res) => {
        console.log(res.data);
        this.setState({ sdata: res.data });
      })
      .catch((err) => console.log(err));
  };

  handlePlotU = (e) => {
    e.preventDefault();
    const url = "http://localhost:80/myPhpProj/index.php";

    axios
      .post(url, { action: 'uRequest' }) //, {
      .then((res) => {
        console.log(res.data);
        this.setState({ udata: res.data });
      })
      .catch((err) => console.log(err));
  };
  
  render() {
    return (
      <div className="App-header">
        <h1 className={'cssClass'}>React-PHP</h1>
          <h4 className={'cssClass'}>This is a  React client frontend example using a PHP backend server.
            We fetch data from MariaDB "mydb" and plot the speed and the space of vehicle movement.
            Data transaction protocol is json 
          </h4>
        <br />
        <Container>
          
          <Row>
            <Col>
              <button
                onClick={this.handlePlotS}
                className="btn btn-success"
                id="submit"
              >
                {" "}
                Plot S=f(t){" "}
              </button>
            </Col>
            <Col>
              <button
                onClick={this.handlePlotU}
                className="btn btn-success"
                id="submit"
              >
                {" "}
                Plot U=f(t){" "}
              </button>
            </Col>
          </Row>

          <Row>
            <Col>
              <LineChart
                width={500}
                height={300}
                data={this.state.sdata}
                margin={{ top: 20, right: 30, left: 40, bottom: 5 }}
              >
                <CartesianGrid strokeDasharray="3 3" />
                <XAxis dataKey="t" />
                <YAxis />
                <Tooltip />
                <Legend />
                <Line type="monotone" dataKey="s" stroke="#8884d8" />
              </LineChart>
            </Col>
            <Col>
              <LineChart
                width={500}
                height={300}
                data={this.state.udata}
                margin={{ top: 20, right: 30, left: 40, bottom: 5 }}
              >
                <CartesianGrid strokeDasharray="3 3" />
                <XAxis dataKey="t" />
                <YAxis />
                <Tooltip />
                <Legend />
                <Line type="monotone" dataKey="u" stroke="#8884d8" />
              </LineChart>
            </Col>
          </Row>
        </Container>
      </div>
    );
  }
}

export default App;
