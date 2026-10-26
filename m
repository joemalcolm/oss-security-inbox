X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/26/14
Message-ID: <d90288f3-1b6e-46d9-9a6d-ed7b55ffe175@oracle.com>
Date: Mon, 26 Oct 2026 09:31:22 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: GNU patch 2.8.1 released, fixes CVE-2026-115207
Content-Type: text/plain; charset=utf-8

https://lists.gnu.org/archive/html/bug-patch/2026-10/msg00014.html announces:
> GNU patch 2.8.1 has been released to fix the following critical bug:
> 
>>    Prevent creation of out-of-tree files (CVE-2026-115207)
>>
>>    When reverse-applying a patch that deletes a file, patch created that
>>    file without checking if the pathname is safe.  Fix that by adding the
>>    missing check.
> 
> The project page is at https://savannah.gnu.org/projects/patch/
> 
> The sources can be downloaded from https://ftp.gnu.org/gnu/patch/
> 
> The sha256sum checksums are as follows:
> 
>> a6ab04d926d6a624832a8ce19ea4e77c76742abf14cb7bca33fea010b7fa9842  
>> patch-2.8.1.tar.bz2
>> 0f7b43c7ea450c5d3e9eaf8301177628bc0171d580b2bd6a72822409767144ff  
>> patch-2.8.1.tar.gz
>> 3240c7959c5347c8ed347e3c4201c0337bf4240d5cf09d68889e58eeaba30e17  
>> patch-2.8.1.tar.xz
> 
> This release is also GPG signed. You can download the signature by
> appending '.sig' to the URL. If the 'gpg --verify' command fails
> because you don't have the required public key, then run this command
> to import it:
> 
>   gpg --recv-keys D5BF9FEB0313653A
> 
> Key fingerprint = 259B 3792 B3D6 D319 212C  C4DC D5BF 9FEB 0313 653A
> 
> Regards,
> Andreas Gruenbacher

