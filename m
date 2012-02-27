X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/02/27/21
Message-ID: <CA+s+YO+iJ0X_8o8HOrSEu-H=n1JGgGhVJKpGy9tQFvGqTd_9WQ@mail.gmail.com>
Date: Mon, 27 Feb 2012 14:10:59 +0000
From: Whitney Houston <i4m4l1v3b17ch3z@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: DesktopOnNet 3 Beta LFI
Content-Type: text/plain; charset=utf-8

I forget to say, I want CVE number. give it to me.

On Mon, Feb 27, 2012 at 2:10 PM, Whitney Houston
<i4m4l1v3b17ch3z@...il.com>wrote:

> Hello list
>
> I want to report serious scary issue, I find this vulnerability that make
> me fall off chair and giggle like silly slut.
>
> Project: http://sourceforge.net/projects/don3/
>
> <?php
> require('system/switches.php');
>
> if
> (file_exists('applications/'.$_GET["app"].'.don3app/'.$_GET["app"].'.php')){
>         $appfile = $_GET["app"];
>         $app_path = "applications/".$appfile.".don3app/";
> } else {
>         $appfile = "frontpage";
>         $app_path = "applications/frontpage.don3app/";
> }
>
> if (file_exists("library/$appfile.don3lib")){
>         $topper_array = don3_read_don3lib($appfile.".don3lib");
>         $title = $topper_array[0];
> } else {
>         $title = "ERROR T1";
> }
>
>
> $topper_includer = 'applications/'.$appfile.'.don3app/'.$appfile.'.php';
>
> ....
>
> include ($topper_includer);
>
>
> Obviously I keep this bug super secret for many month but now i release
> for all, after my recent death.
>
> xx
>

