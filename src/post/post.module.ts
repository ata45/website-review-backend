import { Module } from '@nestjs/common';
import { PostsService } from './post.service';
import { PostsUpdate, PostsController } from './post.controller';

@Module({
  controllers: [PostsController, PostsUpdate],
  providers: [PostsService],
})
export class PostsModule {}