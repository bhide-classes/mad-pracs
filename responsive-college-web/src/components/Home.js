import React from 'react'; 
 
function Home() { 
  const announcements = [ 
    {
      id: 1, 
      title: 'Welcome to our new website!', 
      description: 'We are pleased to announce the launch of our new website. Please explore the site and let us know what you think.', 
      date: 'April 1, 2023' 
    }, 
    { 
      id: 2, 
      title: 'Admissions now open',
      description: 'Admissions for the 2023-24 academic year are now open. Please visit the Admissions section of our website for more information.', 
      date: 'April 15, 2023' 
    }, 
    { 
      id: 3, 
      title: 'Campus reopening',
      description: 'We are excited to announce that our campus will be reopening for in-person classes starting from May 1, 2023. Please see the Academics section of our website for the revised class schedule.', 
      date: 'April 20, 2023' 
    } 
  ]; 
 
  return ( 
    <div> 
      <h2>Announcements</h2> 
      {announcements.map(announcement => ( 
        <div key={announcement.id}> 
          <h3>{announcement.title}</h3> 
          <p>{announcement.description}</p>
          <p><em>{announcement.date}</em></p> 
        </div> 
      ))} 
    </div> 
  ); 
} 

export default Home; 