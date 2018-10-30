import React, {Component} from 'react';
import Divider from "semantic-ui-react/dist/commonjs/elements/Divider/Divider";
import Image from "semantic-ui-react/dist/commonjs/elements/Image/Image";
import List from "semantic-ui-react/dist/commonjs/elements/List/List";
import Container from "semantic-ui-react/dist/commonjs/elements/Container/Container";
import Header from "semantic-ui-react/dist/commonjs/elements/Header/Header";
import Menu from "semantic-ui-react/dist/commonjs/collections/Menu/Menu";
import Dropdown from "semantic-ui-react/dist/commonjs/modules/Dropdown/Dropdown";
import Segment from "semantic-ui-react/dist/commonjs/elements/Segment/Segment";
import Grid from "semantic-ui-react/dist/commonjs/collections/Grid/Grid";
import {Route} from "react-router";
import Home from "../Home/Home";
import Catalog from "../catalog/Catalog";
import Link from "react-router-dom/es/Link";

class Layout extends Component {
    render() {
        return (
            <div>
                <Menu fixed='top' inverted>
                    <Container>
                        <Menu.Item as='a' header>
                            <Image size='mini' src='http://placehold.it/20x20' style={{ marginRight: '1.5em' }} />
                            Project Name
                        </Menu.Item>
                        <Menu.Item as='span'>
                            <Link to="/">Home</Link>

                        </Menu.Item>
                        <Menu.Item as='span'>
                            <Link to="/catalog">Catalog</Link>

                        </Menu.Item>

                        <Dropdown item simple text='Dropdown'>
                            <Dropdown.Menu>
                                <Dropdown.Item>List Item</Dropdown.Item>
                                <Dropdown.Item>List Item</Dropdown.Item>
                                <Dropdown.Divider />
                                <Dropdown.Header>Header Item</Dropdown.Header>
                                <Dropdown.Item>
                                    <i className='dropdown icon' />
                                    <span className='text'>Submenu</span>
                                    <Dropdown.Menu>
                                        <Dropdown.Item>List Item</Dropdown.Item>
                                        <Dropdown.Item>List Item</Dropdown.Item>
                                    </Dropdown.Menu>
                                </Dropdown.Item>
                                <Dropdown.Item>List Item</Dropdown.Item>
                            </Dropdown.Menu>
                        </Dropdown>
                    </Container>
                </Menu>

                <Container text style={{ marginTop: '7em' }}>
                    <Route path="/" exact component={Home} />
                    <Route path="/catalog" exact component={Catalog} />
                </Container>

                <Segment inverted vertical style={{ margin: '5em 0em 0em', padding: '5em 0em' }}>
                    <Container textAlign='center'>

                        <List horizontal inverted divided link>
                            <List.Item as='a' href='#'>
                                Site Map
                            </List.Item>
                            <List.Item as='a' href='#'>
                                Contact Us
                            </List.Item>
                            <List.Item as='a' href='#'>
                                Terms and Conditions
                            </List.Item>
                            <List.Item as='a' href='#'>
                                Privacy Policy
                            </List.Item>
                        </List>
                    </Container>
                </Segment>
            </div>
        );
    }
}

export default Layout;