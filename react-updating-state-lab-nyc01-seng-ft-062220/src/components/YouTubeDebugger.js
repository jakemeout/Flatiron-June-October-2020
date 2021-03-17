import React from 'react';


export default class YouTubeDebugger extends React.Component {

    state = {
        errors: [],
        user: null,
        settings: {
            bitrate: 8,
            video: {
                resolution: '1080p'
            }
        }
    }
    
   
    
    clickHandler = (event) => {
        console.log(event.target.className)
       if(event.target.className === 'bitrate'){
        this.setState({settings: {...this.state.settings, bitrate: 12}})

       }else if(event.target.className === 'resolution'){
        this.setState({settings: {...this.state.settings.video, resolution: '720p'}})
       }
    }


    render() { 
        return <div>
        <button 
        className="bitrate"
        onClick={this.clickHandler}>bitrate</button>
        <button 
        className="resolution"
        onClick={this.clickHandler}>resolution</button>
        </div>
    }
}// Code YouTubeDebugger Component Here
