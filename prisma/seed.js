const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();

async function seed() {
  const createdCustomer = await prisma.customer.create({
    data: {
      name: "Alice",
      contact: {
        create: {
          phone: "678",
          email: "email@email.com",
        },
      },
    },
    include: {
      contact: true,
    },
  });

  console.log("Details", createdCustomer);

  const createdMovie = await prisma.movie.create({
    data: {
      title: "Alice in the Wonderland",
      runtimeMins: 120,
    },
  });

  console.log("Movie is", createScreen1);

  const createScreen1 = await prisma.screen.create({
    data: {
      screen: 1,
    },
  });
  console.log("Movie shown in", createScreen1);

  const createScreening = await prisma.screening.create({
    data: {
      startsAt: new Date("2022-06-07 13:00:00"),
      movieId: createdMovie.id,
      screenId: createScreen1.id,
    },
  });

  console.log("Movie on display", createScreening);

  // Don't edit any of the code below this line
  process.exit(0);
}

seed().catch(async (error) => {
  console.error(error);
  await prisma.$disconnect();
  process.exit(1);
});
