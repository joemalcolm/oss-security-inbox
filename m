X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/05/24/2
Message-ID: <CAJzxamKHwFAuxhJettT+89cicmhhyGAarThX77hjA3j5mU7TWw@mail.gmail.com>
Date: Fri, 25 May 2012 02:20:59 +1000
From: David Black <disclosure@....org>
To: oss-security <oss-security@...ts.openwall.com>
Subject: CVE Request: powerdns does not clear supplementary groups
Content-Type: text/plain; charset=utf-8

Powerdns does not drop/clear supplementary groups in its dropPrivs
routine where the intent is to drop privileges.

The relevant code can be found in pdns/unix_utility.cc /
pdns-recursor-3.3/unix_utility.cc [0].

Can a CVE id be assigned for this issue?


[0]
pdns/unix_utility.cc / pdns-recursor-3.3/unix_utility.cc
// Drops the program's privileges.
void Utility::dropPrivs( int uid, int gid )
{
 if(gid) {
   if(setgid(gid)<0) {
     theL()<<Logger::Critical<<"Unable to set effective group id to
"<<gid<<": "<<stringerror()<<endl;
     exit(1);
   }
   else
     theL()<<Logger::Info<<"Set effective group id to "<<gid<<endl;

 }

 if(uid) {
   if(setuid(uid)<0) {
     theL()<<Logger::Critical<<"Unable to set effective user id to
"<<uid<<":  "<<stringerror()<<endl;
     exit(1);
   }
   else
     theL()<<Logger::Info<<"Set effective user id to "<<uid<<endl;
 }
}
