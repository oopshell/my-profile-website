import React, { useState } from 'react';
import { 
  ContentContainer,
  Form,
  Label,
  Input,
  TextArea,
  Button
} from '../styles/StyledComponents';


const Contact: React.FC = () => {
  const [name, setName] = useState<string>('');
  const [email, setEmail] = useState<string>('');
  const [message, setMessage] = useState<string>('');

  const handleSubmit = (event: React.FormEvent) => {
    event.preventDefault();
    // Handle form submission logic
  };

  return (
    <ContentContainer>
      <h2>Contact Me</h2>
      <Form onSubmit={handleSubmit}>
        <div>
          <Label>Name:</Label>
          <Input 
            type="text" 
            value={name} 
            onChange={(e) => setName(e.target.value)} 
          />
        </div>
        <div>
          <Label>Email:</Label>
          <Input 
            type="email" 
            value={email} 
            onChange={(e) => setEmail(e.target.value)} 
          />
        </div>
        <div>
          <Label>Message:</Label>
          <TextArea 
            value={message} 
            onChange={(e) => setMessage(e.target.value)} 
          />
        </div>
        <Button type="submit">Send</Button>
      </Form>
    </ContentContainer>
  );
};

export default Contact;
