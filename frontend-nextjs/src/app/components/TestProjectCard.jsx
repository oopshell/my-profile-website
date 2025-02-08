import React, { useState } from "react";
import Image from "next/image";

const TestProjectCard = ({ imgUrl, title, description }) => {
  const [imageError, setImageError] = useState(false);
  console.log('TestProjectCard rendering with:', { imgUrl, title, description });

  return (
    <div style={{ 
      border: '2px solid red',  // Adding visible border to check rendering
      margin: '20px',
      padding: '10px',
      backgroundColor: '#181818',
      borderRadius: '10px',
      width: '300px'
    }}>
      {/* Image Container */}
      <div style={{ 
        height: '200px',
        position: 'relative',
        border: '2px solid blue'  // Adding visible border to check container
      }}>
        {!imageError ? (
          <img
            src={imgUrl}
            alt={title}
            style={{
              width: '100%',
              height: '100%',
              objectFit: 'cover'
            }}
            onError={() => {
              console.log('Test image failed to load:', imgUrl);
              setImageError(true);
            }}
            onLoad={() => console.log('Test image loaded successfully:', imgUrl)}
          />
        ) : (
          <div style={{
            width: '100%',
            height: '100%',
            display: 'flex',
            alignItems: 'center',
            justifyContent: 'center',
            backgroundColor: '#181818',
            color: 'white',
            padding: '10px',
            textAlign: 'center'
          }}>
            {title} (Image Failed)
          </div>
        )}
      </div>

      {/* Text Container */}
      <div style={{
        padding: '10px',
        color: 'white',
        border: '2px solid green'  // Adding visible border to check container
      }}>
        <h3 style={{
          fontSize: '20px',
          fontWeight: 'bold',
          marginBottom: '10px'
        }}>{title}</h3>
        <p style={{
          color: '#ADB7BE'
        }}>{description}</p>
      </div>
    </div>
  );
};

export default TestProjectCard; 