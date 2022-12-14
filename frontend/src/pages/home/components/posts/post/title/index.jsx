import React, { Fragment } from 'react';
import Typography from '@material-ui/core/Typography';
import classStyles from './styles';
import Spacer from "../../../../../../components/spacer";
import HelpIcon from '@material-ui/icons/Help';
import Book from '@material-ui/icons/MenuBook';
  
const Title = (props) => {
  const classes = classStyles();
  const {title, type} = props;
  
  return (
    <Fragment>
      <div className={classes.container}>
      <Typography variant="h6" className={classes.text}>
        {title}
      </Typography>
      <Spacer/>
      { type === "q" ?
        <HelpIcon className={classes.postType} />
        :
        <Book className={classes.postType} />
      }
      </div>
      <Spacer/>
    </Fragment>
  );
}

export default Title;