import React from 'react';
// import classStyles from './styles';
import SunEditor,{buttonList} from "suneditor-react";
import 'suneditor/dist/css/suneditor.min.css'; // Import Sun Editor's CSS File

const Title = () => {
  // const classes = classStyles();

  return (
    <SunEditor placeholder="Opis..."
      setOptions={{
        height: 200,
      buttonList: buttonList.basic   
      }}
    />
  );
}

export default Title;