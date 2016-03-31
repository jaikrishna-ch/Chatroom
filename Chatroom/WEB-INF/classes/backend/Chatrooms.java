package backend;

import java.util.ArrayList;
  
public class Chatrooms {
	public ArrayList<Chatroom> openlist = new ArrayList<Chatroom> ();
	//to check if the chat room already exists or not
	public boolean namecheck(String roomname){
		int i;
		boolean flag = true;
		for(i=0;i<openlist.size();i++)
			{
				//if(openlist.get(i).nameofroom!=null)
				{
			    if(openlist.get(i).nameofroom.equals(roomname))
			    {
				flag = false;
				break;
			    }
				}
				//else continue;
			}
		return flag;
	}

	//code to create a new page when the user enters a new name
	public Chatroom createroom(String roomname){
		Chatroom c= new Chatroom();
		c.nameofroom=roomname;
		this.openlist.add(c);
		return c;
	}
public String getname(int n)
{
	return this.openlist.get(n).nameofroom;
}
public static void main(String [] args){
	System.out.println( "Chatrooms mains waas run" );
}
}
