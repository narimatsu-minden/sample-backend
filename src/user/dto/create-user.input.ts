import { InputType, Int, Field } from '@nestjs/graphql';

@InputType()
export class CreateUserInput {
  @Field(() => String, { description: 'Userのメールアドレス' })
  email!: string;

  @Field(() => String, { description: 'Userの名前' })
  name!: string;
}
