//
//  DCProjectConstants.h
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

//Urls
//Request
#define URL_Request_Base @"https://decider.azurewebsites.net/api"

#define URL_Requst_Authentication @"login.php"
#define URL_Requst_Registration @"register.php?email=%@&password=%@&name=%@"
#define URL_Request_LocationsForUser @"user_locations.php?fbid=%@"
#define URL_Request_ParticipantsForEvent @"event_users.php?eid=%@"
#define URL_Request_EventsForUser @"user_events.php?fbid=%@"
#define URL_Request_TodosForEvent @"event_todo.php?eid=%@"
#define URL_Request_Event @"event.php?eid=%@"

#define URL_Request_Todo @"todo.php?tdid=%@"
#define URL_Request_TodoLocation @"&location=%@"

#define URL_Request_Location @"location.php?lid=%@"
#define URL_Request_LocationCoordinate @"&lat=%@&lon=%@"

#define URL_Request_User @"user.php?fbid=%@"

#define URL_Request_CreateEvent @"event.php?adminfbid=%@&title=%@&description=%@"
#define URL_Request_CreateTodo @"todo.php?eid=%@&title=%@&description=%@"
#define URL_Request_CreateLocation @"location.php?title=%@&street=%@&street_num=%@&city=%@&state=%@"

#define URL_Request_AddParticipants @"event_participants.php?eid=%@&fbid=%@"
#define URL_Request_RemoveParticipants @"event_participants.php?eid=%@&fbid=%@"

#define URL_Request_AddPointsToTodo @"todo_points.php?tdid=%@"
#define URL_Request_RemovePointsFromTodo @"todo_points.php?tdid=%@"

#define URL_Request_AddEmailsToEvent @"event_add.php?eid=%@&email=%@" 

//Codes
#define Code_HTTP_Get @"GET"
#define Code_HTTP_POST @"POST"

//HTTP
#define HTTP_Authentication_Format @"%@:%@"
#define HTTP_Authentication_Header @"Basic %@"
#define HTTP_Header_Authorization @"Authorization"

//Download Codes
//User
#define DownloadCode_User_FBId @"fbid"
#define DownloadCode_User_Email @"email"
#define DownloadCode_User_Name @"name"

//Event
#define DownloadCode_Event_EId @"eid"
#define DownloadCode_Event_AdminFBId @"admin_fbid"
#define DownloadCode_Event_Title @"title"
#define DownloadCode_Event_Description @"description"

//Todo
#define DownloadCode_Todo_EId @"eid"
#define DownloadCode_Todo_TdId @"tdid"
#define DownloadCode_Todo_Description @"description"
#define DownloadCode_Todo_Title @"title"
#define DownloadCode_Todo_Pts @"pts"
#define DownloadCode_Todo_Location @"location"

//Location
#define DownloadCode_Location_Lid @"lid"
#define DownloadCode_Location_Title @"title"
#define DownloadCode_Location_Street @"street"
#define DownloadCode_Location_StreetNum @"street_num"
#define DownloadCode_Location_City @"city"
#define DownloadCode_Location_State @"state"
#define DownloadCode_Location_Lat @"lat"
#define DownloadCode_Location_Lon @"lon"

//Cells
#define Cell_EventCell @"eventCell"
#define Cell_TodoCell @"todoCell"

//Segues
#define Segue_ToEventListView @"toEventListView"
#define Segue_ToRegisterView @"toRegisterView"
#define Segue_ToTodoListView @"toTodoListView"
#define Segue_ToCreateEventView @"toCreateEventView"
#define Segue_ToCreateTodoView @"toCreateTodoView"
#define Segue_ToCreateLocationView @"toCreateLocationView"
#define Segue_ToTodoDetailView @"toTodoDetailView"
#define Segue_ToAddFriendView @"toAddFriendsView"



