import '../scss/home.scss';
import '../img/image2.jpg';
import './common';
import { foo } from './home';

import { Button } from './components';

Button({ containerName: 'button-wrapper', text: 'Button from JS', cls: 'button' });

console.log('HOME PAGE!!');
foo();
