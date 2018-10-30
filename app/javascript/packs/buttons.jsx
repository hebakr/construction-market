import React, {Component} from 'react';

function b1Click() {
    console.log('button 1');
}

function b2Click() {
    console.log('button 2');
}

class Buttons extends Component {
    render() {
        return (
            <div>
                <button className='ui primary button' role='button' onClick={() => console.log('inline')}>
                    Primary
                </button>
                <button className='ui secondary button' role='button' onClick={b2Click}>
                    Secondary
                </button>
            </div>
        );
    }
}

export default Buttons;