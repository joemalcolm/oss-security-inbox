X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/11/26/24
Message-ID: <CAD3CancjW+4OoK728_HLfrf82gQEcgvdkQ90j5_Or7OXr0fLqQ@mail.gmail.com>
Date: Thu, 27 Nov 2014 08:28:14 +1300
From: Matthew Daley <mattd@...fuzz.com>
To: oss-security@...ts.openwall.com
Subject: Re: O_CREAT|O_DIRECTORY on nonexisting file expected behaviour?
Content-Type: text/plain; charset=utf-8

On Thu, Nov 27, 2014 at 4:28 AM, Fiedler Roman <Roman.Fiedler@....ac.at> wrote:
> (...)
> My test program was:
>
> #include <fcntl.h>
> #include <stdio.h>
> #include <sys/stat.h>
>
> int main(int argc, char **argv) {
>   int fd;
>   struct stat statBuf;
>   int result;
>
>   fd=open("xxx", O_RDWR|O_CREAT|O_DIRECTORY, 0600);
>   result=fstat(fd, &statBuf);
>   if(result) {
>     fprintf(stderr, "Stat failed\n");
>     return(1);
>   }
>   fprintf(stderr, "New element type is %d\n", S_ISDIR(fd));

FWIW, this should probably be S_ISDIR(statBuf.st_mode).

- Matthew

>   return(0);
> }
