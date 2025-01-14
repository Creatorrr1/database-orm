-- CreateTable
CREATE TABLE "Ticket" (
    "id" SERIAL NOT NULL,
    "customerID" INTEGER NOT NULL,
    "screeningID" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Ticket_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Ticket" ADD CONSTRAINT "Ticket_customerID_fkey" FOREIGN KEY ("customerID") REFERENCES "Customer"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Ticket" ADD CONSTRAINT "Ticket_screeningID_fkey" FOREIGN KEY ("screeningID") REFERENCES "Screening"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
