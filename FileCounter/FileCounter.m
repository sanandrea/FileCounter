//
//  FileCounter.m
//  FileCounter
//
//  Created by Andi Palo on 10/10/2016.
//  Copyright © 2016 Andi Palo. All rights reserved.
//

#import "FileCounter.h"
#import <sys/types.h>
#import <fcntl.h>
#import <errno.h>
#import <sys/param.h>

@implementation FileCounter

+(void) lsof
{
    int flags;
    int fd;
    char buf[MAXPATHLEN+1] ;
    int n = 1 ;
    
    for (fd = 0; fd < (int) FD_SETSIZE; fd++) {
        errno = 0;
        flags = fcntl(fd, F_GETFD, 0);
        if (flags == -1 && errno) {
            if (errno != EBADF) {
                return ;
            }
            else
                continue;
        }
        fcntl(fd , F_GETPATH, buf ) ;
        NSLog( @"File Descriptor %d number %d in use for: %s",fd,n , buf ) ;
        ++n ;
    }
}
@end
