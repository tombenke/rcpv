import React, { Component } from "react"
import { connect } from 'react-redux'
import { showSelector } from '../state/multimedia/'
const objectAssign = require("object-assign")

function noop() {}

class Presentation extends Component {

    render() {

        let props = {
            frameBorder: "0",
            src: this.props.show || "",
            target: "_parent",
            allowFullScreen: this.props.allowFullScreen || false,
            style: objectAssign(
                {},
                {
                    position: this.props.position || "absolute",
                    display: this.props.display || "block",
                    height: this.props.height || "100%",
                    width: this.props.width || "100%"
                },
                this.props.styles || {}
            ),
            height: this.props.height || "100%",
            name: this.props.name || "",
            width: this.props.width || "100%",
            onLoad: this.props.onLoad || noop
        }

        console.log('Presentation.render', this.props.show, props)
        return React.createElement(
            "iframe",
            objectAssign(props, this.props.id ? { id: this.props.id } : {}, this.props.className ? { className: this.props.className } : {})
        )
    }
}

const mapStateToProps = state => ({
    show: showSelector(state)
})

const mapDispatchToProps = {
}

export default connect(mapStateToProps, mapDispatchToProps)(Presentation)
//export default Presentation
