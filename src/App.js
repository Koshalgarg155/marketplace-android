import { View, Text , Platform } from 'react-native'
import React from 'react'
import Config from 'react-native-config'

export default function App() {
  return (
    <View>
      <Text style={{color:'red'}} >App</Text>
      <Text>{Config.MOBILE_TITLE}</Text>
      <Text style={{color:'red'}}>{process.env.REACT_APP_TITLE}</Text>
      <Text>{Platform.OS}</Text>
    </View>
  )
}